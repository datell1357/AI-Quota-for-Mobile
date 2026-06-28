package defpackage;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bd4 extends WebChromeClient {
    public bd4(String str) {
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strMessage = consoleMessage != null ? consoleMessage.message() : null;
        Integer numValueOf = consoleMessage != null ? Integer.valueOf(consoleMessage.lineNumber()) : null;
        StringBuilder sb = new StringBuilder();
        sb.append(strMessage);
        sb.append(" -- From line ");
        sb.append(numValueOf);
        ConsoleMessage.MessageLevel messageLevel = consoleMessage != null ? consoleMessage.messageLevel() : null;
        int i = messageLevel == null ? -1 : ad4.a[messageLevel.ordinal()];
        if (i == 1) {
            ez3.a.getClass();
            ra3.f(new Object[0]);
            return true;
        }
        if (i != 2) {
            ez3.a.getClass();
            ra3.c(new Object[0]);
            return true;
        }
        ez3.a.getClass();
        ra3.m(new Object[0]);
        return true;
    }
}
