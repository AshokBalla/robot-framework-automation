from pathlib import Path
assert Path('resources/Common.resource').exists()
assert Path('variables/testdata.py').exists()
print('robot resources validated')
