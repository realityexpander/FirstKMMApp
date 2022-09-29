package com.example.firstkmmapp

import kotlinx.serialization.Serializable

@Serializable
data class Todos (
    val userId: Int = -1,
    val id: Int = -1,
    var title: String = "",
    val completed: Boolean = false
) {
    fun asString(): String {
        return "Todos(userId=$userId, id=$id, title='$title', completed=$completed)"
    }
}
