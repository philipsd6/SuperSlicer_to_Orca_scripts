FROM perl:stable
RUN cpan \
    Getopt::Long \
    File::Basename \
    File::Glob \
    File::HomeDir \
    Path::Class \
    Path::Tiny \
    String::Escape \
    Term::Choose \
    Term::Form::ReadLine \
    Text::SimpleTable \
    JSON

LABEL description="A Docker image to run the superslicer_to_orca.pl script"

COPY . /root
WORKDIR /root
VOLUME /root/.config/
ENTRYPOINT [ "perl", "./superslicer_to_orca.pl", "--outdir", "/root/.config/OrcaSlicer" ]
