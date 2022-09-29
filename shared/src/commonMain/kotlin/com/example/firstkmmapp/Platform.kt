package com.example.firstkmmapp

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform