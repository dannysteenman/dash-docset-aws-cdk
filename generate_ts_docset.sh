mkdir -p aws-cdk-ts.docset/Contents/Resources/Documents/api
cp resources/Info.plist aws-cdk-ts.docset/Contents/Info.plist
cp resources/docSet.dsidx aws-cdk-ts.docset/Contents/Resources/docSet.dsidx

wget https://docs.aws.amazon.com/cdk/api/v2/docs/aws-construct-library.html -O tmp/aws-construct-library.html
wget -nH -np -P tmp --recursive https://docs.aws.amazon.com/cdk/api/v2/docs/aws-construct-library.html

cp -r tmp/cdk/api/v2/docs/{fonts,styles} aws-cdk-ts.docset/Contents/Resources/Documents

python dash_docset_aws_cdk/generate_ts_docset.py
