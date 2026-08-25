package com.aiquota.mobile.accounts

import androidx.test.internal.runner.listener.InstrumentationRunListener
import java.io.PrintStream
import org.junit.runner.Description
import org.junit.runner.Result
import org.junit.runner.notification.Failure

class Task8XmlRunListener : InstrumentationRunListener() {
    private val tests = linkedMapOf<String, TestResult>()

    override fun testStarted(description: Description) {
        tests[key(description)] = TestResult(description.className, description.methodName)
    }

    override fun testFailure(failure: Failure) {
        tests.getOrPut(key(failure.description)) {
            TestResult(failure.description.className, failure.description.methodName)
        }.failure = failure.exception
    }

    override fun testIgnored(description: Description) {
        tests.getOrPut(key(description)) { TestResult(description.className, description.methodName) }.skipped = true
    }

    override fun instrumentationRunFinished(streamResult: PrintStream, resultBundle: android.os.Bundle, junitResults: Result) {
        val xml = buildString {
            append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
            append("<testsuite name=\"task8-separate-process\" tests=\"")
            append(junitResults.runCount)
            append("\" failures=\"")
            append(junitResults.failureCount)
            append("\" errors=\"0\" skipped=\"")
            append(junitResults.ignoreCount)
            append("\" time=\"")
            append(junitResults.runTime / 1000.0)
            append("\">\n")
            tests.values.forEach { test ->
                append("  <testcase classname=\"").append(escape(test.className)).append("\" name=\"")
                    .append(escape(test.methodName)).append("\">")
                when {
                    test.skipped -> append("<skipped/>")
                    test.failure != null -> append("<failure type=\"")
                        .append(escape(test.failure!!.javaClass.name)).append("\">")
                        .append(escape(test.failure!!.stackTraceToString())).append("</failure>")
                }
                append("</testcase>\n")
            }
            append("</testsuite>\n")
        }
        instrumentation.targetContext.filesDir.resolve(FILE_NAME).writeText(xml)
        super.instrumentationRunFinished(streamResult, resultBundle, junitResults)
    }

    private fun key(description: Description) = "${description.className}#${description.methodName}"

    private fun escape(value: String): String = buildString(value.length) {
        value.forEach { character ->
            append(
                when (character) {
                    '&' -> "&amp;"
                    '<' -> "&lt;"
                    '>' -> "&gt;"
                    '"' -> "&quot;"
                    '\'' -> "&apos;"
                    else -> character
                },
            )
        }
    }

    private data class TestResult(
        val className: String,
        val methodName: String,
        var failure: Throwable? = null,
        var skipped: Boolean = false,
    )

    companion object {
        const val FILE_NAME = "task8-instrumentation.xml"
    }
}
