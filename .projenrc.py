from projen.python import PythonProject

project = PythonProject(
    author_email="danny.steenman@icloud.com",
    author_name="Danny Steenman",
    module_name="dash_docset_aws_cdk",
    name="dash-docset-aws-cdk",
    version="0.1.0",
    deps=[
        "beautifulsoup4",
        "lxml",
        "requests",
    ],
)

project.gitignore.exclude("aws-cdk-ts.docset/")
project.gitignore.exclude("tmp/")

project.synth()
