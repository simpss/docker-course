mongod --noauth & sleep 5

if `mongo --eval "db.createUser({ user: '${DB_USER}', pwd: '${DB_PSWD}', roles: [ { role: 'readWrite', db: '${DB_NAME}' } ] });"` ; then
    echo "new User creation succeeded"
else
    echo "New User creation failed"
fi

mongod --shutdown
