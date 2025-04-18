# Utiliser l'image Python officielle légère
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier tous les fichiers dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par Streamlit
EXPOSE 8501

# Lancer le script avec Streamlit
CMD ["streamlit", "run", "reda.py", "--server.port=8501", "--server.address=0.0.0.0"]
