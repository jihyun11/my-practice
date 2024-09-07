# Use an official Java runtime as a parent image
# java 17버전이 깔린 리눅스 환경의 컨테이너
FROM eclipse-temurin:17-jre

# The application's jar file
# 빌드된 jarFile의 경로를 변수에 담기
ARG JAR_FILE=build/libs/*.jar

# Add the application's jar to the container
# 가져온 jarFile을 컨테이너로 옮기기 (app.jar라는 이름으로)
COPY ${JAR_FILE} app.jar

# Run the jar file
# 컨테이너가 시작될 때 app.jar가 자동으로 실행되게 해 주기
ENTRYPOINT ["java","-jar","app.jar"]