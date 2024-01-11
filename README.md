# app


## Setup environment
Create env file from example assets/env/env.example and fill it with your data
```
cp assets/env//env.example assets/env/.env
```

## Prepare to run
```
make get_ready
```

## How to run
You can run app in two ways:
1. Run with VsCode debugger
2. Run with command
```
make run
```

## cmd build runner
flutter pub run build_runner build --delete-conflicting-outputs
