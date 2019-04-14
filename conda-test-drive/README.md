# B''H

# Conda Test Drive


--------
## Setup Instructions

---

### Setup conda:

```sh

conda create --name py-test-app python=3.7 

conda activate py-test-app

python -m ipykernel install --user --name py-test-app --display-name "Python (py-test-app)"

```

---

### Install the requirements.

```sh

pip install -r requirements.txt

```

---

### Setup BigQuery authentication using the GCP Console:
- See: https://cloud.google.com/bigquery/docs/reference/libraries
- This will let you download a private key, for example `stats-learning-d43fdf44694a.json`
- Store the json-key-file in an appropiate directory, such as: `~/app-keys` 

- Double check that you have enabled the BigQuery API via the console.
    - https://console.cloud.google.com/apis/library?project=data-science-course-226116&q=bigquery
    - https://console.cloud.google.com/apis/library?folder=&organizationId=&project=data-science-course-226116
