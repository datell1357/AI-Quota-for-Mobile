package defpackage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class u03 {
    public static volatile zw2 a;

    public static zw2 a() {
        if (a == null) {
            synchronized (u03.class) {
                try {
                    if (a == null) {
                        URL resource = u03.class.getResource("/mozilla/public-suffix-list.txt");
                        if (resource != null) {
                            InputStream inputStreamOpenStream = resource.openStream();
                            try {
                                zw2 zw2VarB = b(inputStreamOpenStream);
                                inputStreamOpenStream.close();
                                a = zw2VarB;
                            } catch (Throwable th) {
                                inputStreamOpenStream.close();
                                throw th;
                            }
                        } else {
                            a = new zw2(Arrays.asList("com"));
                        }
                    }
                } catch (IOException e) {
                    Log log = LogFactory.getLog(u03.class);
                    if (log.isWarnEnabled()) {
                        log.warn("Failure loading public suffix list from default resource", e);
                    }
                } finally {
                }
            }
        }
        return a;
    }

    public static zw2 b(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, uf0.a);
        ArrayList arrayList = new ArrayList(2);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        while (true) {
            sv0 sv0Var = null;
            ArrayList arrayList2 = null;
            ArrayList arrayList3 = null;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return new zw2(arrayList);
                }
                if (!line.isEmpty()) {
                    if (line.startsWith("//")) {
                        if (sv0Var == null) {
                            if (line.contains("===BEGIN ICANN DOMAINS===")) {
                                sv0Var = sv0.n;
                            } else if (line.contains("===BEGIN PRIVATE DOMAINS===")) {
                                sv0Var = sv0.o;
                            }
                        } else if (line.contains("===END ICANN DOMAINS===") || line.contains("===END PRIVATE DOMAINS===")) {
                            break;
                        }
                    } else if (sv0Var != null) {
                        if (line.startsWith(".")) {
                            line = line.substring(1);
                        }
                        boolean zStartsWith = line.startsWith("!");
                        if (zStartsWith) {
                            line = line.substring(1);
                        }
                        if (zStartsWith) {
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList();
                            }
                            arrayList3.add(line);
                        } else {
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(line);
                        }
                    }
                }
            }
            if (arrayList2 != null) {
                arrayList.add(new t03(sv0Var, arrayList2, arrayList3));
            }
        }
    }
}
