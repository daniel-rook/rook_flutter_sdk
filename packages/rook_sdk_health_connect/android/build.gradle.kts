import org.jetbrains.kotlin.gradle.dsl.JvmTarget

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

// ------------------------ Dependencies ------------------------
val rookSdkVersion = "4.2.0"
val protoVersion = "4.28.3"
val timberVersion = "5.0.1"
// ------------------------ Dependencies ------------------------

group = "com.rookmotion.rook_sdk_health_connect"
version = rookSdkVersion

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

android {
    namespace = "com.rookmotion.rook_sdk_health_connect"
    compileSdk = 36
    compileSdkExtension = 19

    defaultConfig {
        minSdk = 26
        targetSdk = 36
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    sourceSets {
        getByName("main") {
            java.srcDirs("src/main/kotlin")
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
    implementation("com.rookmotion.android:rook-sdk") {
        version {
            strictly(rookSdkVersion)
        }
    }
}
