import org.jetbrains.kotlin.gradle.dsl.JvmTarget

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.parcelize")
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
    implementation("com.google.code.gson:gson:2.13.2")
    implementation("io.tryrook.android:rook-sdk-samsung") {
        version {
            strictly(rookSdkSamsungVersion)
        }
    }
}
