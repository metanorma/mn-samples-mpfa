cd bpn
asciidoctor --trace -b mpfd -r 'metanorma-mpfd' raw.adoc
cd ../compliance
asciidoctor --trace -b mpfd -r 'metanorma-mpfd' raw.adoc
cd ../guidelines
asciidoctor --trace -b mpfd -r 'metanorma-mpfd' v2.adoc
cd ..
