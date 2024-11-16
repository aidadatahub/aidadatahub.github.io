---
title: "Data Science Platform Example: <br/> GPU Sensitive Data IaaS with Jupyter"
description: Getting started with Data Science Platform services
---

{:class="tight-table"}
| **Target Audience**: | Customer leads, AI- and data scientists, and systems development experts. |  

Infrastructure as a Service (IaaS) provides resources that you manage yourself.
It is a service for advanced customers that provides a lot of freedom to those
with the skills and responsibility to handle it.

{:.no_toc}
## Topics

In this example you, as a Customer lead, will

{:style="list-style-type: none; padding-inline-start: 0px;"}
* TOC
{:toc}

This example assumes experience with linux, and authority to initiate expense.

{:.no_toc}
## Instructions

### 1. Launch a GPU enabled virtual machine

1. Visit the DSP Horizon customer self-service portal at [https://dsp.aida.scilifelab.se/](https://dsp.aida.scilifelab.se/)
2. Log in using your DSP Horizon credentials.
3. Pick the correct secure environment from the project selector drop down menu top left.
4. Add your SSH public key to your project by clicking Project > Compute > Key Pairs, then Import Public Key.
5. Create a GPU enabled virtual machine by clicking Instances > Launch instance, and
    1. In Details, Instance name: Put a good name for a compute server, like "Jupyter demo".
    2. In Source, click the up arrow icon next to an image that has Docker, CUDA, Miniforge, Jupyter Lab and RMD.
    3. In Flavor, click the up arrow icon next to a flavor that has GPU. Bigger is more expensive.
    4. If applicable: In Security Groups, click the up arrow icon next to allowall.
    5. In Key Pair, verify that your key is allocated.
    6. Click Launch instance.
6. Click Associate Floating IP > IP Address > pick one, fill in in next step.
7. Wait for Power State to become Running.

### 2. Configure your computer for easy access.

Add to SSH-config (eg `~/.ssh/config`):

```ssh
Host jupyter-demo
  HostName [associated IP in Horizon]
  User ubuntu
  ProxyJump sshuser@dsp.aida.scilifelab.se
  ServerAliveInterval 10
  LocalForward 8888 localhost:8888
  LocalForward 6006 localhost:6006
```

This sets up your computer use the DSP SSH access gateway when making SSH
connections to your VM. By default, DSP rejects SSH connections that are not
made through the SSH access gateway.

**Note**: In the future, we will switch to `ProxyJump your.email@example.com@dsp.aida.scilifelab.se`
to ensure that users will only be able to connect to their own secure
environments.

ServerAliveInterval makes it easier to maintain a connection, and to detect when
it has gone stale.  

The LocalForwards define SSH secured port forwards. They connect ports on your
computer with ports on your VM in the secure environment. They allow you to work
with Jupyter notebooks and TensorBoard that are running on the VM in your secure
environment as if though they were running on your computer.

### 3. Install software from public repositories that are trusted by the platform.

Connections are blocked by default in DSP secure environments. However, DSP
provides an inspecting http proxy that allows downloading software and security
updates from public repositories that are trusted by AIDA Data Hub. DSP data
science images are preconfigured to make transparent use of this proxy, as
demonstrated in this next step.

Here, clone the Jupiter notebook GitHub repo and use apt and pip to install its
dependencies in a Python virtual environment:

```bash
ssh jupyter-demo
git clone https://github.com/eryl/aida-transformers-workshop-code.git
cd aida-transformers-workshop-code
sudo apt install python3-venv
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

**Note**: The DSP inspecting http proxy configuration is continually updated to
be more or less restrictive, as public repositiories are updated with features
that make them more or less appropriate for secure environments. For example,
publicly accessible granular usage counters are increasingly popular despite
providing a well known data exfiltration method.

### 4. Upload own data.

1. Download demo data to your own computer, and upload it to your VM:

```bash
wget https://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz
wget https://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz
scp {annotations,images}.tar.gz jupyter-demo:
```

{:start="2"}
2. Put demo data where our Jupyter notebook expects it

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

Your Jupiter notebook is now ready to use, as long as you have this SSH
connection (and its port forwards) open.

{:start="2"}
2. While your SSH connection is open, connect to your Jupyter notebook by pointing your web browser to [http://127.0.0.1:8888](http://127.0.0.1:8888). Your SSH connection allows you to use the SSH port forward that you set up in step 2. Without it, you would not be able to connect.
3. Chose transformers_for_images.ipynb
4. Use Shift+Enter to run the cells manually in sequence. Edit if you like. You are now training AI models on GPU enabled Infrastructure as a Service compute resources in a secure environment on the AIDA Data Hub Data Science Platform.
5. Optional: Notebook step ~23 creates a TensorBoard, which can be used to monitor training progress graphically. It will initially be empty, but as subsequent training progresses, you can use the Refresh icon in TensorBoard to visualize current state graphically. The TensorBoard uses the second SSH port forward that you set up in step 2, or it would not be able to connect.
