import org.jetbrains.kotlin.gradle.dsl.JvmTarget

plugins {
    id("com.android.library")
}

// ------------------------ Dependencies ------------------------
val rookSdkSamsungVersion = "4.2.0"
val protoVersion = "4.28.3"
val timberVersion = "5.0.1"
// ------------------------ Dependencies ------------------------

group = "io.tryrook.rook_sdk_samsung_health"
version = rookSdkSamsungVersion

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

android {
    namespace = "io.tryrook.rook_sdk_samsung_health"
    compileSdk = 36

    defaultConfig {
        minSdk = 29
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    // The generated protobuf Java sources live next to the Kotlin sources.
    sourceSets {
        getByName("main") {
            java.directories.add("src/main/kotlin")
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget.set(JvmTarget.JVM_17)
    }
}

dependencies {
    implementation("com.jakewharton.timber:timber:$timberVersion")
    implementation("com.google.protobuf:protobuf-javalite:$protoVersion")
    implementation("com.google.code.gson:gson:2.13.2")
    implementation("io.tryrook.android:rook-sdk-samsung") {
        version {
            strictly(rookSdkSamsungVersion)
        }
    }
}
