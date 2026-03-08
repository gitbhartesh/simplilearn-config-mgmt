from jinja2 import Environment, FileSystemLoader

# Load the template from the file system
file_loader = FileSystemLoader('.')
env = Environment(loader=file_loader)

# Specify the template file
template = env.get_template('template.j2')

# Define the variables
context = {
    'name': 'ABCD',
    'notifications': 5
}

# Render the template with the variables
output = template.render(context)

print(output)