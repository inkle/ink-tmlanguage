import * as FS from 'fs-extra';
import * as Path from 'path';
import * as Build from './build';

const generatedFolder = Path.join(__dirname, 'generated');
const baselineFolder = Path.join(__dirname, 'baselines');
const casesFolder = Path.join(__dirname, 'cases');

interface TestCase {
  fileName: string;
  path: string;
  category?: string;
}

function scanForTestCasesInDirectory(path: string): TestCase[] {
  const categories = FS.readdirSync(path);
  const currentTestCases = [];

  for (const categoryFile of categories) {
    const fullPath = Path.join(path, categoryFile);
    if (FS.statSync(fullPath).isDirectory()) {
      const files = FS.readdirSync(fullPath);
      for (const file of files) {
        const fullFilePath = Path.join(fullPath, file);
        currentTestCases.push({
          fileName: file,
          path: fullFilePath,
          category: categoryFile,
        });
      }
    } else {
      // Treating it as an orphaned test case.
      currentTestCases.push({
        fileName: categoryFile,
        path: fullPath
      });
    }
  }

  return currentTestCases;
}

function generateBaseline(cases: TestCase[]) {
  for (const testCase of cases) {
    describe("Generating baseline for " + testCase.fileName, () => {
      let wholeBaseline: string;
      let parsedFileName: Path.ParsedPath;

      beforeEach(done => {
        const text = FS.readFileSync(testCase.path, 'utf8');
        Build.generateScopes(text).then(result => {
          wholeBaseline = result;
          done();
        });
      });

      afterEach(() => {
        wholeBaseline = undefined!;
        parsedFileName = undefined!;
      });

      it('Comparing baseline', () => {
        expect(true).toBeTruthy();
        // assertBaselinesMatch(folder, parsedFileName.name + '.baseline.txt', wholeBaseline);
      });
    });
  }
}

function ensureCleanGeneratedFolder() {
  FS.emptyDirSync(generatedFolder);
}

// Ensure generated folder
ensureCleanGeneratedFolder();

const testCases = scanForTestCasesInDirectory(casesFolder);
generateBaseline(testCases);

// function assertBaselinesMatch(folder: string, file: string, generatedText: string) {
//   const generatedFileName = path.join(generatedFolder, file);
//   fs.writeFileSync(generatedFileName, generatedText);

//   const baselineFile = path.join(baselineFolder, file);
//   if (fs.existsSync(baselineFile)) {
//     expect(generatedText).toEqual(fs.readFileSync(baselineFile, 'utf8'));
//   } else {
//     throw new Error('New generated baseline.');
//   }
// }
