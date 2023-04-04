#/bin/bash
git clone https://github.com/purab-git/mediawiki.git
cd mediawiki
 for i in `ls| grep -vE 'LocalSettings.php|README.md|deploymentwiki.sh' `; do kubectl apply -f $i ; done
