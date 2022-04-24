if [ $(echo "$ENVIRONMENT")=="develop" ]
then
    npm run develop
else
    npm run start
fi

echo "`date`: 🤖 All ready boss!"