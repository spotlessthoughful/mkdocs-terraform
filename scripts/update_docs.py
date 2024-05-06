import os
import subprocess
import yaml
import logging


def generate_docs_for_module(module_name, module_dir, docs_dir):
    module_path = os.path.join(module_dir, module_name)
    output_file = os.path.join(docs_dir, f'{module_name}.md')

    logging.info(f"Generating docs for module {module_name}")
    command = f"terraform-docs markdown table --output-file {output_file} {module_path}"
    subprocess.run(command, shell=True, check=True)

    return f"{module_name}.md"


def update_docs(modules_dir, docs_dir, mkdocs_config_path):
    modules = [module for module in os.listdir(modules_dir) if os.path.isdir(os.path.join(modules_dir, module))]

    if not modules:
        logging.warning("No modules found in modules directory")
        return

    with open(mkdocs_config_path, 'r') as f:
        mkdocs_config = yaml.safe_load(f)

    nav = mkdocs_config.get('nav', [])

    for module in modules:
        doc_file = generate_docs_for_module(module, modules_dir, docs_dir)
        doc_title = module.replace('-', ' ').title()
        nav_item = {doc_title: f"{doc_file}"}

        if nav_item not in nav:
            nav.append(nav_item)

    mkdocs_config['nav'] = nav

    with open(mkdocs_config_path, 'w') as file:
        yaml.safe_dump(mkdocs_config, file, default_flow_style=False)

    logging.info("MKDocs config updated with new modules")


def main():
    logging.basicConfig(level=logging.INFO)

    project_root = os.getcwd()
    logging.info(f'Project root: {project_root}')
    modules_dir = os.path.join(project_root, 'modules')
    docs_dir = os.path.join(project_root, 'docs')
    mkdocs_config_path = os.path.join(project_root, 'mkdocs.yml')

    logging.info("Updating docs and generating site")
    update_docs(modules_dir, docs_dir, mkdocs_config_path)


if __name__ == '__main__':
    main()
