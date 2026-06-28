package com.google.api.client.testing.json;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class MockJsonParser extends JsonParser {
    private final JsonFactory factory;
    private boolean isClosed;

    public MockJsonParser(JsonFactory jsonFactory) {
        this.factory = jsonFactory;
    }

    @Override // com.google.api.client.json.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.isClosed = true;
    }

    @Override // com.google.api.client.json.JsonParser
    public BigInteger getBigIntegerValue() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public byte getByteValue() {
        return (byte) 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public String getCurrentName() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken getCurrentToken() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public BigDecimal getDecimalValue() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public double getDoubleValue() {
        return 0.0d;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonParser
    public float getFloatValue() {
        return 0.0f;
    }

    @Override // com.google.api.client.json.JsonParser
    public int getIntValue() {
        return 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public long getLongValue() {
        return 0L;
    }

    @Override // com.google.api.client.json.JsonParser
    public short getShortValue() {
        return (short) 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public String getText() {
        return null;
    }

    public boolean isClosed() {
        return this.isClosed;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken nextToken() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonParser skipChildren() {
        return null;
    }
}
