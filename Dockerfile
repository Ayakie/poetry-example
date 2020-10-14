FROM python:3.7-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /workspace

COPY poetry.lock pyproject.toml ./

    # Git のインストール
RUN apt-get update && apt-get -y install git

RUN pip install poetry

# Poetry で導入したパッケージ(pyproject.toml)を全てインストール
RUN poetry config virtualenvs.create false \
  && poetry install

RUN pip install jupyter_contrib_nbextensions && \
    jupyter contrib nbextension install --user && \
    jupyter nbextension enable highlight_selected_word/main &&\
    jupyter nbextension enable hinterland/hinterland && \
    jupyter nbextension enable toc2/main
