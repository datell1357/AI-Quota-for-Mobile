package com.google.api.client.json.gson;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import defpackage.di0;
import defpackage.p61;
import defpackage.ww1;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
class GsonParser extends JsonParser {
    private List<String> currentNameStack = new ArrayList();
    private String currentText;
    private JsonToken currentToken;
    private final GsonFactory factory;
    private final ww1 reader;

    /* JADX INFO: renamed from: com.google.api.client.json.gson.GsonParser$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$api$client$json$JsonToken;
        static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            int[] iArr = new int[di0.J(10).length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[7] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[8] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[5] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[6] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[4] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            $SwitchMap$com$google$api$client$json$JsonToken = iArr2;
            try {
                iArr2[JsonToken.START_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.START_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public GsonParser(GsonFactory gsonFactory, ww1 ww1Var) {
        this.factory = gsonFactory;
        this.reader = ww1Var;
        boolean readLeniency = gsonFactory.getReadLeniency();
        ww1Var.getClass();
        ww1Var.B = readLeniency ? 1 : 2;
    }

    private void checkNumber() throws IOException {
        JsonToken jsonToken = this.currentToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return;
        }
        p61.k("Token is not a number");
    }

    @Override // com.google.api.client.json.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
    }

    @Override // com.google.api.client.json.JsonParser
    public BigInteger getBigIntegerValue() throws IOException {
        checkNumber();
        return new BigInteger(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public byte getByteValue() throws IOException {
        checkNumber();
        return Byte.parseByte(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public String getCurrentName() {
        if (this.currentNameStack.isEmpty()) {
            return null;
        }
        return this.currentNameStack.get(r1.size() - 1);
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken getCurrentToken() {
        return this.currentToken;
    }

    @Override // com.google.api.client.json.JsonParser
    public BigDecimal getDecimalValue() throws IOException {
        checkNumber();
        return new BigDecimal(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public double getDoubleValue() throws IOException {
        checkNumber();
        return Double.parseDouble(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonParser
    public float getFloatValue() throws IOException {
        checkNumber();
        return Float.parseFloat(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public int getIntValue() throws IOException {
        checkNumber();
        return Integer.parseInt(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public long getLongValue() throws IOException {
        checkNumber();
        return Long.parseLong(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public short getShortValue() throws IOException {
        checkNumber();
        return Short.parseShort(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public String getText() {
        return this.currentText;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken nextToken() throws IOException {
        int iS0;
        JsonToken jsonToken = this.currentToken;
        if (jsonToken != null) {
            int i = AnonymousClass1.$SwitchMap$com$google$api$client$json$JsonToken[jsonToken.ordinal()];
            if (i == 1) {
                this.reader.b();
                this.currentNameStack.add(null);
            } else if (i == 2) {
                this.reader.j();
                this.currentNameStack.add(null);
            }
        }
        try {
            iS0 = this.reader.s0();
        } catch (EOFException unused) {
            iS0 = 10;
        }
        switch (di0.F(iS0)) {
            case 0:
                this.currentText = "[";
                this.currentToken = JsonToken.START_ARRAY;
                break;
            case 1:
                this.currentText = "]";
                this.currentToken = JsonToken.END_ARRAY;
                List<String> list = this.currentNameStack;
                list.remove(list.size() - 1);
                this.reader.A();
                break;
            case 2:
                this.currentText = "{";
                this.currentToken = JsonToken.START_OBJECT;
                break;
            case 3:
                this.currentText = "}";
                this.currentToken = JsonToken.END_OBJECT;
                List<String> list2 = this.currentNameStack;
                list2.remove(list2.size() - 1);
                this.reader.B();
                break;
            case 4:
                this.currentText = this.reader.j0();
                this.currentToken = JsonToken.FIELD_NAME;
                List<String> list3 = this.currentNameStack;
                list3.set(list3.size() - 1, this.currentText);
                break;
            case 5:
                this.currentText = this.reader.q0();
                this.currentToken = JsonToken.VALUE_STRING;
                break;
            case 6:
                String strQ0 = this.reader.q0();
                this.currentText = strQ0;
                this.currentToken = strQ0.indexOf(46) == -1 ? JsonToken.VALUE_NUMBER_INT : JsonToken.VALUE_NUMBER_FLOAT;
                break;
            case 7:
                if (!this.reader.V()) {
                    this.currentText = "false";
                    this.currentToken = JsonToken.VALUE_FALSE;
                } else {
                    this.currentText = "true";
                    this.currentToken = JsonToken.VALUE_TRUE;
                }
                break;
            case 8:
                this.currentText = "null";
                this.currentToken = JsonToken.VALUE_NULL;
                this.reader.o0();
                break;
            default:
                this.currentText = null;
                this.currentToken = null;
                break;
        }
        return this.currentToken;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonParser skipChildren() throws IOException {
        JsonToken jsonToken = this.currentToken;
        if (jsonToken != null) {
            int i = AnonymousClass1.$SwitchMap$com$google$api$client$json$JsonToken[jsonToken.ordinal()];
            if (i == 1) {
                this.reader.y0();
                this.currentText = "]";
                this.currentToken = JsonToken.END_ARRAY;
            } else if (i == 2) {
                this.reader.y0();
                this.currentText = "}";
                this.currentToken = JsonToken.END_OBJECT;
                return this;
            }
        }
        return this;
    }
}
