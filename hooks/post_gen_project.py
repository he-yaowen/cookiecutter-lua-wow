import os
from glob import glob

license_id = '{{ cookiecutter.license_id }}'

toc_files = {
    'Mainline': '{{ cookiecutter.addon_mainline }}',
    'Vanilla': '{{ cookiecutter.addon_vanilla }}',
    'TBC': '{{ cookiecutter.addon_tbc }}',
    'Wrath': '{{ cookiecutter.addon_wrath }}',
}

if license_id != 'None':
    os.rename('LICENSE.{{ cookiecutter.license_id }}', 'LICENSE')

for license_file in glob('LICENSE.*'):
    os.unlink(license_file)

for key in toc_files:
    if toc_files[key] == 'no':
        os.unlink('{{ cookiecutter.project_name }}_%s.toc' % key)
