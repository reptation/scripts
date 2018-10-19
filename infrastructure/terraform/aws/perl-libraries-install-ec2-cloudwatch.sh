#!/bin/sh
sudo apt-get update
sudo apt-get install -y unzip 
sudo apt-get install -y libwww-perl libdatetime-perl

curl https://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.2.zip -O
unzip CloudWatchMonitoringScripts-1.2.2.zip && rm CloudWatchMonitoringScripts-1.2.2.zip && sudo mv aws-scripts-mon /usr/bin/

/usr/bin/aws-scripts-mon/mon-put-instance-data.pl --mem-used-incl-cache-buff --mem-util --disk-space-util --disk-path=/

echo '*/5 * * * * root /usr/bin/aws-scripts-mon/mon-put-instance-data.pl --mem-used-incl-cache-buff --mem-util --disk-space-util --disk-path=/ --from-cron' | sudo tee /etc/cron.d/cloudwatch-disk-mem-usage
