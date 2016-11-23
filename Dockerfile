FROM cheggwpt/ruby:0.0.2
MAINTAINER jgilley@chegg.com

# remove supervisor since it is not used here
# Make the app directory
# install the fake s3 gem without docs
RUN	apk del supervisor && \
	mkdir -p /var/data/fakes3 && \
	gem install fakes3 --no-ri --no-rdoc

# Add the service script
COPY service.sh /service.sh

# LINK env vars for convox
ENV LINK_USERNAME convox
ENV LINK_PASSWORD password
ENV LINK_PATH /bucket
ENV LINK_PORT 4569

# expose the fake s3 port
EXPOSE 4569

# expose the app volume
VOLUME ["/var/data/fakes3"]

# set default command for entrypoint.sh
CMD ["service"]
