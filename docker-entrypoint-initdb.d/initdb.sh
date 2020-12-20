set -x
SAMPLE_URL=https://sp.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip

mkdir -p /tmp/data
wget ${SAMPLE_URL} -O /tmp/data/dvdrental.zip
unzip /tmp/data/dvdrental.zip -d /tmp/data
pg_restore -U postgres -d dvdrental /tmp/data/dvdrental.tar
rm /tmp/data/dvdrental.{zip,tar}
