# B"H 

--------
## Setup Instructions

---

### Setup conda:

```sh
conda create --name springboard python=3.6
conda activate springboard
```

---

### If cleanup from jupyter extension stuff needed, do:

```sh

conda deactivate
pip install --upgrade pip
pip install notebook --upgrade

pip uninstall jupyterlab
rm -r ~/.jupyter
pip install jupyterlab --upgrade

jupyter serverextension disable  jupyterlab_discovery
jupyter labextension disable jupyterlab_discovery
pip uninstall jupyter_nbextensions_configurator

jupyter labextension install @jupyterlab/toc

# -----------------------------------------------

conda activate springboard
pip install --upgrade pip
pip install notebook --upgrade
pip install jupyterlab --upgrade

jupyter serverextension disable  jupyterlab_discovery
jupyter labextension disable jupyterlab_discovery
pip uninstall jupyter_nbextensions_configurator

jupyter labextension install @jupyterlab/toc

```


---

### Install the requirements.

```sh

sudo apt-get install python-dateutil

```


```sh

conda deactivate
pip install --upgrade pip
pip install notebook --upgrade
pip install jupyterlab --upgrade
jupyter labextension install @jupyterlab/toc

# -----------------------------------------------

conda activate springboard
pip install --upgrade pip
pip install notebook --upgrade
pip install jupyterlab --upgrade
jupyter labextension install @jupyterlab/toc

```

---

```sh
pip install -r requirements.txt
```

---


### Setup the IPython kernel:
```sh
python -m ipykernel install --user --name springboard --display-name "Python (springboard)"
```


---

### Download the Kaggle competition files:

**First (if haven't done yet):**
- Setup at Kaggke API credentials 
- https://github.com/Kaggle/kaggle-api#api-credentials


**Then:**

```sh
kaggle competitions download -c house-prices-advanced-regression-techniques -p ~/.kaggle/competitions/house-prices-advanced-regression-techniques/
```
- This will place the files in the following dir: `~/.kaggle/competitions/house-prices-advanced-regression-techniques/` 
---


---

## Walk through the notebooks:
```sh
cd notebooks
jupyter lab &
```   
