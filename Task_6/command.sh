sudo useradd -m alice
sudo useradd -m bob
sudo groupadd project_group
sudo usermod -a -G project_group alice
sudo usermod -a -G project_group bob
zip files.zp files
sudo chown alice files.zp
sudo chgrp project_group files.zp
sudo chmod 640 files.zp

