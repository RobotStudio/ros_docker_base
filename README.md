# ROS Docker Base

Basic docker template to build and launch a ROS2 docker application without any further requirements than Docker.  Use these repository files as a base for building your applicaion and iterate on the application with a binded volume in Docker, syncing updates between development and build/test.

## Steps

1. `docker-compose build`
2. `docker-compose run ros`

You should be dropped to a prompt as the `ros` user in the home directory and anything in the `app` directory is now in `/home/ros/workspace` on the container.

## Validation

1. `ros2 run demo_nodes_cpp talker`
2. In another terminal, run `docker ps` and take note of the `Container ID`, then run `docker exec --rm -ti <ID> bash` using that `Container ID` to bring up a second terminal on the container.
3. In the second terminal, run `ros2 run demo_nodes_py listener`.

You should observe the first terminal publishing "Hello World" and the second terminal listening to it.

## Usage for Development

You can now drop your application into the app folder, run it using `docker-compose`, and begin iterating on it and (re)building it from within the container to get the application working as expected.

## Usage in Production

You can edit or bypass the `docker-compose.yml` file, building the application and pushing it out to your favorite container hub provider for CI/CD pipeline ingestion.
