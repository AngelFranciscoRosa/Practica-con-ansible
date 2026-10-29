FROM ubuntu:22.04

# Evitar preguntas interactivas durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Instalar SSH, sudo y dependencias necesarias
RUN apt-get update && apt-get install -y \
    openssh-server \
    sudo \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Crear el directorio necesario para SSH
RUN mkdir /var/run/sshd

# Crear el usuario ansible con clave ansible y añadirlo al grupo sudo
RUN useradd -m -s /bin/bash ansible && \
    echo "ansible:ansible" | chpasswd && \
    usermod -aG sudo ansible

# Configurar sudoers para que el usuario ansible no pida contraseña
RUN echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Exponer el puerto SSH
EXPOSE 22

# Iniciar el servicio SSH al arrancar el contenedor
CMD ["/usr/sbin/sshd", "-D"]