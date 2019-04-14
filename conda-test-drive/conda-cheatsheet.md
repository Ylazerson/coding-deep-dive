# B''H 








---

## Show installed python packages:

```sh

pip list

```

---

## Show installed python packages plus other non-python packages:

```sh
conda list
```








---

## Create conda virtual environment:
---------------------------------

```sh

conda create --name <app name> <list of packages to install>

conda create --name py-test-app python=3.7 

```

---

## Activate environment:

```sh

source activate py-test-app
source deactivate 

```


--- 

## Remove environment:

```sh

conda remove --name py-test-app --all

```

---

## See which python the environment is using:

```sh

which python

```


---

## Show list of conda environments:

```sh

conda env list

```