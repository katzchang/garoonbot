VENV=./venv
PYTHON=$(VENV)/bin/python
PIP=$(VENV)/bin/pip
PIP_SELFCHECK=$(VENV)/pip-selfcheck.json

garoon: $(PIP_SELFCHECK) $(PYTHON)
	$(PYTHON) garoon.py -u $(u)

schedule: $(PIP_SELFCHECK) $(PYTHON)
	$(PYTHON) schedule -u $(u)

$(PIP_SELFCHECK): $(PYTHON)
	$(PIP) install -r requirements.txt

$(PYTHON):
	virtualenv $(VENV)

clean:
	rm -rf $(VENV)

