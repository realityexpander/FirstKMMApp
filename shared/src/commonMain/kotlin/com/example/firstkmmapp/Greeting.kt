package com.example.firstkmmapp

import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.request.*
import io.ktor.client.statement.*

class Greeting {
    private val platform: Platform = getPlatform()

    fun greeting(): String {
        return "Hello, ${platform.name}!"
    }

    private val client = HttpClient()
    suspend fun getHtml(): String {
        val response = client.get("https://ktor.io/docs")
        return response.bodyAsText()
    }

    suspend fun getTodo(): Todos {
        val todos: Todos = Api.ktorClient.get("https://jsonplaceholder.typicode.com/todos/1").body()
        return todos
    }
}