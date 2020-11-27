# speedtest
simple shell script which uses speedtest-cli (https://github.com/sivel/speedtest-cli).
Generates report as CSV file.


installation:

wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x speedtest-cli

OR

git clone https://github.com/sivel/speedtest-cli.git
cd speedtest-cli
python setup.py install


check installed version:

speedtest-cli --version
