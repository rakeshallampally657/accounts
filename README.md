# accounts
accounts ms deploy to kubernetes dev and prod envs

lessons learnt:
1) when you want to use jar file genereated in one job needs to be used in another job you need to upload artifact and then download it in another job
2) for version    outputs: version: ${{ steps.set-version.outputs.version }} you can refer it like this, if you want to use in new job then {{ needs.build_and_test.outputs.version }}
3) if you are using docker build command then in that job u need to do - uses: actions/checkout@v3, also use checkout for mvn clean install