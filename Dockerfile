#FROM wso2/wso2am

# Create a non-root user with uid 802
#RUN adduser --system --uid 802 wso2carbon

# Change ownership of relevant directories to the new user
#RUN chown -R wso2carbon:wso2 /home/wso2carbon/wso2am-4.0.0

# Set user to wso2carbon
#USER wso2carbon

# Expose ports needed for API Management
#EXPOSE 9443
#EXPOSE 8280
#EXPOSE 8243
#EXPOSE 10397

# Start the API Manager
#CMD ["wso2server.sh"]

FROM wso2/wso2am

# Change ownership of relevant directories to the new user
RUN chown -R wso2carbon:wso2 /home/wso2carbon/wso2am-4.0.0

# Set user to wso2carbon
USER wso2carbon

# Expose ports needed for API Management
EXPOSE 9443
EXPOSE 8280
EXPOSE 8243
EXPOSE 10397

# Start the API Manager
CMD ["wso2server.sh"]
