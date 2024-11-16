---
title: "Data Science Platform Example: <br/> GPU Sensitive Data IaaS with Jupyter"
description: Getting started with Data Science Platform services
---

{:class="tight-table"}
| **Target Audience**: | Customer leads, AI- and data scientists, and systems development experts. |  

Infrastructure as a Service (IaaS) gives you resources that you manage yourself.
It is a service for advanced customers that provides a lot of freedom to those with
the skills and responsibility to handle it.

{:.no_toc}
## Topics

In this example, you as a customer lead will

{:style="list-style-type: none; padding-inline-start: 0px;"}
* TOC
{:toc}

{:.no_toc}
## Instructions

### 1. Launch a GPU enabled virtual machine

1. Visit Horizon, the customer self-service portal, at [https://dsp.aida.scilifelab.se/](https://dsp.aida.scilifelab.se/)
2. Log in using your DSP Horizon credentials.
3. Pick the correct secure environment from the project selector drop down menu top left.
4. Add your SSH public key to your project by clicking Project > Compute > Key Pairs, then Import Public Key.
5. Create a GPU enabled virtual machine by clicking Instances > Launch instance, and then
    1. In Details, Instance name: Put a good name for a compute server, like "Jupyter demo".
    2. In Source, click the up arrow icon next to an image that has Docker, CUDA, Miniforge, Jupyter Lab and RMD.
    3. In Flavor, click the up arrow icon next to a flavor that has GPU. Bigger is more expensive.
    4. In Security Groups, click the up arrow icon next to allowall.
    5. In Key Pair, verify that your key is allocated.
    6. Click Launch instance.
6. Click Associate Floating IP > IP Address > pick one, and remember which you picked. Let's call it YOUR_VM_IP.
7. Wait for Power State to become Running.

### 2. Configure your computer for easy access.

Add to SSH-config (eg `~/.ssh/config`) remembering to change to YOUR_VM_IP:

```ssh
Host jupyter-demo
  HostName YOUR_VM_IP
  User ubuntu
  ProxyJump sshuser@dsp.aida.scilifelab.se
  ServerAliveInterval 10
  LocalForward 8888 localhost:8888
  LocalForward 6006 localhost:6006
```

This sets up your computer to go through the DSP SSH access gateway when
connecting to your VM, which is necessary, or you will not be able to connect.

In the future, we will switch to `ProxyJump your.email@example.com@dsp.aida.scilifelab.se`
instead, to help ensure that users will only be able to connect to their own
secure environments.

The last two lines are SSH secured port forwards. These will allow you to
connect to your Jupyter notebooks and TensorBoard using a web browser on your
computer, once you get them running in the secure environment in later steps
below. This makes it so that "it feels like you are working locally".

### 3. Install software for a from platform trusted public repositories.

Connections are blocked by default in DSP secure environments, so for these
software installations we use the DSP inspecting http proxy, which allows
downloading software and security updates from public repositories that are
trusted by the platform.

1. Connect to your VM using `ssh jupyter-demo`.
2. Clone the Jupyter notebook repo

```bash
git clone https://github.com/eryl/aida-transformers-workshop-code.git
```

{:start="3"}
3. Install dependencies in a Python virtual environment:

```bash
cd aida-transformers-workshop-code
sudo apt install python3-venv
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### 4. Upload own data.

1. Download demo data to your own computer

```bash
wget https://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz
wget https://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz
```

{:start="2"}
2. Upload demo data to your VM

```bash
scp {annotations,images}.tar.gz jupyter-demo:
```

{:start="3"}
3. Put demo data where our Jupyter notebook wants it

```bash
ssh jupyter-demo
mkdir -p ~/aida-transformers-workshop-code/datasets/oxfordiiipet/oxford-iiit-pet
cd ~/aida-transformers-workshop-code/datasets/oxfordiiipet/oxford-iiit-pet
tar xf ~/annotations.tar.gz
tar xf ~/images.tar.gz
```

### 5. Use a Jupyter notebook to train an AI model, and monitor progress graphically.

1. Connect to your VM and start up the demo Jupyter notebook

```bash
ssh jupyter-demo
cd ~/aida-transformers-workshop-code
source .venv/bin/activate
cd notebooks
# no pw/token, don't open a browser, only allow connections from localhost:
jupyter notebook --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.open_browser=False --NotebookApp.ip='127.0.0.1'
```

Your Jupiter notebook is now ready to use for as long as you have this SSH connection open.

{:start="2"}
2. Connect to your Jupyter notebook, by pointing your web browser on your computer to [http://127.0.0.1:8888](http://127.0.0.1:8888). This way, the connection goes through the SSH port forward that you set up earlier in step 2 (or you would not be able to connect).
3. Chose transformers_for_images.ipynb
4. Use Shift+Enter to run the cells manually in sequence. Edit if you like. You are now training AI on GPU enabled Infrastructure as a Service in a secure environment on the AIDA Data Hub Data Science Platform.
5. Optional: Notebook step ~23 creates a TensorBoard which is used to monitor training progress. It will initially be empty, but as subsequent training progresses, you can use the Refresh icon in TensorBoard to read in and visualize the current state graphically. The TensorBoard uses the second SSH port forward that you set up earlier in step 2 (or it would not be able to connect).
