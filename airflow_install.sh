mkdir ~/airflow
echo "#Airflow configs" >> ~/.bashrc
echo "export AIRFLOW_HOME=~/airflow" >> ~/.bashrc
source ~/.bashrc
AIRFLOW_VERSION=2.6.3
PYTHON_VERSION="$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)"
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
# https://robust-dinosaur-2ef.notion.site/Running-Airflow-on-a-small-AWS-EC2-Instance-8e2a42d2ce7946c3a3d753abc13f2e57
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 8081 -j ACCEPT
sudo netfilter-persistent save