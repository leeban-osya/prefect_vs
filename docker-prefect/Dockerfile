FROM prefecthq/prefect:0.6.1
LABEL maintainer="Nabeel"

RUN apt-get update && apt-get install -y graphviz && apt-get install -y xdg-utils

RUN pip install "prefect[templates, viz]"
RUN pip install ipython


ARG PREFECT_USER_HOME=/usr/local/prefect

COPY script/entrypoint.sh /entrypoint.sh


WORKDIR ${PREFECT_USER_HOME}
COPY prefect /prefect/code/
ENTRYPOINT ["/entrypoint.sh"]