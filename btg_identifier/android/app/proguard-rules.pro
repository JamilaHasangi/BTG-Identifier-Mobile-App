# Keep javax.annotation annotations
-keep class javax.annotation.** { *; }

# Keep Google errorprone annotations
-keep class com.google.errorprone.** { *; }

# Keep javax.lang.model.element.Modifier
-keep class javax.lang.model.element.Modifier { *; }

# Add your other rules here

# Suppress warnings for missing annotations
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.concurrent.GuardedBy
-dontwarn javax.lang.model.element.Modifier
