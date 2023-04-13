FROM wso2/wso2am

# Expose ports needed for API Management
EXPOSE 9443
EXPOSE 8280
EXPOSE 8243
EXPOSE 10397

# Start the API Manager
CMD ["wso2server.sh"]
# CMD ["wso2server.sh", "-Dcarbon.registry.xml=/home/wso2carbon/wso2am-4.0.0/repository/conf/registry.xml", "-Dcarbon.registry.properties=/home/wso2carbon/wso2am-4.0.0/repository/conf/registry.properties", "-Djava.security.egd=file:/dev/./urandom"]
