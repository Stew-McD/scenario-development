import re
from pathlib import Path

CWD = Path(__file__).parent

def generate_requirements(tex_file):
    with open(tex_file, 'r') as file:
        content = file.read()

    matches = re.findall(r'\\usepackage\{(.+?)\}', content)
    with open('latex_requirements.txt', 'w') as file:
        for match in matches:
            file.write(match + '\n')

generate_requirements(CWD / 'latex_files' / 'FutuRaMa_WP2_FutureScenarios_Report.tex')