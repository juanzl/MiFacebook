package com.example.clicker_181661

import android.content.Context
import android.content.DialogInterface
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.service.autofill.TextValueSanitizer
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog

class MainActivity : AppCompatActivity() {
    var cuenta: Int = 0
    lateinit var btn_sumar: Button
    lateinit var tv_cuenta: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Toast.makeText(this, "onCreate", Toast.LENGTH_SHORT).show()
        btn_sumar = findViewById(R.id.btn_clicker)
        tv_cuenta = findViewById(R.id.tv_cuenta)
        val btn_restar: Button = findViewById(R.id.btn_restar)
        val btn_borrar: Button = findViewById(R.id.btn_borrar)


        btn_sumar.setOnClickListener {
            cuenta++
            tv_cuenta.setText("$cuenta")
        }

        btn_restar.setOnClickListener {
            cuenta++
            tv_cuenta.setText("$cuenta")
        }
        btn_borrar.setOnClickListener {
            cuenta=0
            tv_cuenta.setText("$cuenta")
        }
    }

    fun borrar() {
        val alertDialog: AlertDialog? = this?.let {
            val builder = AlertDialog.Builder(it)
            builder.apply {
                setPositiveButton(R.string.ok,
                    DialogInterface.OnClickListener { dialog, id ->
                        // User clicked ok button
                        cuenta = 0
                        tv_cuenta.setText("$cuenta")

                    })
                setNegativeButton(R.string.cancel,
                    DialogInterface.OnClickListener { dialog, id ->
                        //User cancelled the dialog
                    })
            }
            // Set other dialog properties
            builder?.setMessage(R.string.dialog_message)
                .setTitle(R.string.dialog_title)

            // Create the AlertDialog
            builder.create()
        }

    alertDialog?.show()
    }

    override fun onStart() {
        super.onStart()
        //Toast.makeText(this, "onStart", Toast.LENGTH_SHORT).show()
        val preferencias = this.getPreferences(Context.MODE_PRIVATE)
        cuenta = preferencias.getInt("key_cuenta", 0)
        tv_cuenta.setText("$cuenta")
    }
    override fun onResume(){
        super.onResume()
        //Toast.makeText(this, "onResume", Toast.LENGTH_SHORT).show()

    }

    override fun onPause() {
        super.onPause()
        //Toast.makeText(this, "onPause", Toast.LENGTH_SHORT).show()

    }

    override fun onDestroy() {
        super.onDestroy()
        Toast.makeText(this, "onDestroy", Toast.LENGTH_SHORT).show()

    }

    override fun onStop() {
        super.onStop()
        //Toast.makeText(this, "onStop", Toast.LENGTH_SHORT).show()

        val preferencias = this.getPreferences(Context.MODE_PRIVATE)
        val editor = preferencias.edit()
        editor.putInt("key_cuenta", cuenta)
        editor.apply()
        Toast.makeText(this, "se ha guardado la info", Toast.LENGTH_SHORT).show()
    }

    override fun onRestart() {
        super.onRestart()
        Toast.makeText(this, "onRestart", Toast.LENGTH_SHORT).show()

    }
    }
