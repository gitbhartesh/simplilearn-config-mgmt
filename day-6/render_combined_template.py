from jinja2 import Environment, FileSystemLoader
import yaml

# Load data from YAML file
with open('combined_data.yaml', 'r') as file:
    data = yaml.safe_load(file)

# Set up Jinja2 environment
env = Environment(loader=FileSystemLoader('.'))
template = env.get_template('combined_template.j2')

# Render template with data
rendered_text = template.render(data)

# Print or save the rendered text
with open('combined_output.txt', 'w') as output_file:
    output_file.write(rendered_text)

print(rendered_text)