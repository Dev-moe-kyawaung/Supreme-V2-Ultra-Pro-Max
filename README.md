# 1. Create project
```
flutter create supreme_portfolio --platforms=web
cd supreme_portfolio
```
# 2. Replace files with the code above
# Copy all lib/, web/, .github/ folders

# 3. Get dependencies
flutter pub get

# 4. Run locally
```
flutter run -d chrome --web-port=8080
```
# 5. Build for production
```
flutter build web --release --base-href "/supreme_portfolio/"
```
# 6. Deploy
# Push to GitHub → Actions auto-deploys to https://username.github.io/supreme_portfolio/
