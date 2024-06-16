# Description
This is a github template repo. You can use it to quickly setup a repository, with **main** and **develop** as branches.

**main** is supposed to represent the production environment.

**develop** is not protected and can be used as development environment.



# Setup workspace

Download and install python 3.10.14. This download should include pythons package manager "pip". Verify this by typing in the command line:

`pip --version`

We use pip to install the necessary dependencies. 
First we setup a virtual environment, where the dependencies will be saved to. This is to not clash with any global dependencies AND make the environment repoducable.
The necessary dependencies and version are listed in the requirements.txt file.
## Create the virtual environment
`python -m venv venv`

## Activate the virtual environment
On Windows then activate the environment with:
`venv\Scripts\activate`

On Linux/macOs:
`source venv/bin/activate`

## Install the dependencies
Then, in the Command Line type:
`pip install -r requirements.txt`

Then choose the correct python interpreter in your IDE of the newly created environment.



## Further workflow
You can install new dependencies in a terminal with the activated virtual environment by

`pip install NAME_OF_LIBRARY`

and export your current env:

`pip freeze > requirements.txt`.


## Develop in a container

**In the command line, go to the root-directory of the project.**

Build the image by:
`docker build -t my-python-app .`


### MacOS/Linux
Enter the containers shell with your app mounted into app by:

`docker run --rm -v $(pwd)/app:/app -it my-python-app bash`

### Windows
cd into the app directory and then 
`docker run --rm -v .:/app -it my-python-app bash`

## Run service as container

**Example** - Service running on port 8000:
`docker run -d -p 8000:8000 my-python-app`
