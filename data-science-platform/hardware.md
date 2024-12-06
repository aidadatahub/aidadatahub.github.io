## Hardware

We provide multiple systems for working with sensitive data:

* [**Verdi**](#verdi): General purpose system with large long term storage coupled to compute resources (both CPU and GPU nodes).

* [**DGX-2**](#dgx-2): Expert system for training AI-models based on NVIDIA's DGX-2 system


### Verdi {#verdi}

Verdi is a cluster for senstive data aimed at users of a wide range of expertise. It's intended use is as a platform with long term storage attached to high capacity compute both for general data science as well as AI development. 
It consists of three main parts: storage, CPU compute and GPU compute.

The nodes of the cluster is connected by dual 100 Gigabit Ethernet for all nodes.


#### Storage module: {#verdi-storage}

- 6 Storage nodes, each with:
    - 24 Hard drives, 22 TB capacity each
        - 528 TB Total HD Storage per node
    - 4 Solid state drives, 6.4 TB capacity each
        - 25.6 TB Total SSD Storage per node
- Total
    - 3.2 PB HD Storage
    - 153 TB SSD Storage


#### CPU compute: {#verdi-cpu}

- 40 nodes, each with:
    - 32 CPU cores
    - 1 TB RAM 
    - 6.4 TB SSD 
- Total
    - 1280 CPU Cores
    - 40 TB RAM
    - 256 TB SSD storage


#### GPU Compute {#verdi-gpu}

- 6 L4 + 2 L40s nodes, each with:
    - 4 GPUs per node, either:
        - NVIDIA L4 (24 GB per GPU), or
        - NVIDIA L40s (48 GB per GPU)
    - 32 CPU cores
    - 512 GB RAM
    - 8 TB SSD
- Total
    - 256 CPU Cores
    - 4 TB RAM
    - 64 TB SSD storage

### DGX-2 {#dgx-2}

The DGX-2 system is based on NVIDIA's [system](https://www.nvidia.com/en-au/data-center/dgx-2/) of the same name. The system consists of a DGX-2 server with 15 V100 (32 GB) GPUs connected to a storage server with 10 Gigabit Ethernet.

- 15 NVIDIA V100 (32 GB) GPUs, allocated in blocks of 3 or 4 to users
- More details


## Contact
Our [system design team](../people#system-design-support):
{% include people-topic-table.md topic='system-design-support' %}

Please contact us for support or more information!