package com.google.api.client.util.store;

import com.google.api.client.util.IOUtils;
import com.google.api.client.util.Maps;
import defpackage.ew;
import defpackage.hp1;
import defpackage.lp1;
import defpackage.np1;
import defpackage.q73;
import defpackage.w80;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.AclEntry;
import java.nio.file.attribute.AclEntryPermission;
import java.nio.file.attribute.AclEntryType;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class FileDataStoreFactory extends AbstractDataStoreFactory {
    private static final boolean IS_WINDOWS;
    private final File dataDirectory;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class FileDataStore<V extends Serializable> extends AbstractMemoryDataStore<V> {
        private final File dataFile;

        public FileDataStore(FileDataStoreFactory fileDataStoreFactory, File file, String str) throws IOException {
            super(fileDataStoreFactory, str);
            File file2 = new File(file, str);
            this.dataFile = file2;
            if (IOUtils.isSymbolicLink(file2)) {
                q73.q(file2, "unable to use a symbolic link: ");
                throw null;
            }
            if (!file2.createNewFile()) {
                this.keyValueMap = (HashMap) IOUtils.deserialize(new FileInputStream(file2));
            } else {
                this.keyValueMap = Maps.newHashMap();
                save();
            }
        }

        @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
        public FileDataStoreFactory getDataStoreFactory() {
            return (FileDataStoreFactory) super.getDataStoreFactory();
        }

        @Override // com.google.api.client.util.store.AbstractMemoryDataStore
        public void save() throws IOException {
            IOUtils.serialize(this.keyValueMap, new FileOutputStream(this.dataFile));
        }
    }

    static {
        try {
            IS_WINDOWS = System.getProperty("os.name").toLowerCase(Locale.ENGLISH).startsWith("windows");
        } catch (Throwable th) {
            Logger.getLogger(FileDataStoreFactory.class.getName()).severe(th.getMessage());
            throw th;
        }
    }

    public FileDataStoreFactory(File file) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        if (IOUtils.isSymbolicLink(canonicalFile)) {
            q73.q(canonicalFile, "unable to use a symbolic link: ");
            throw null;
        }
        if (!canonicalFile.exists() && !canonicalFile.mkdirs()) {
            q73.q(canonicalFile, "unable to create directory: ");
            throw null;
        }
        this.dataDirectory = canonicalFile;
        if (IS_WINDOWS) {
            setPermissionsToOwnerOnlyWindows(canonicalFile);
        } else {
            setPermissionsToOwnerOnly(canonicalFile);
        }
    }

    private static void setPermissionsToOwnerOnly(File file) throws IOException {
        HashSet hashSet = new HashSet();
        hashSet.add(PosixFilePermission.OWNER_READ);
        hashSet.add(PosixFilePermission.OWNER_WRITE);
        hashSet.add(PosixFilePermission.OWNER_EXECUTE);
        try {
            Files.setPosixFilePermissions(Paths.get(file.getAbsolutePath(), new String[0]), hashSet);
        } catch (RuntimeException e) {
            throw new IOException("Unable to set permissions for " + file, e);
        }
    }

    private static void setPermissionsToOwnerOnlyWindows(File file) throws IOException {
        Path path = Paths.get(file.getAbsolutePath(), new String[0]);
        UserPrincipal owner = ew.l(Files.getFileAttributeView(path, ew.b(), new LinkOption[0])).getOwner();
        AclFileAttributeView aclFileAttributeViewJ = ew.j(Files.getFileAttributeView(path, ew.w(), new LinkOption[0]));
        np1 np1VarM = np1.m(AclEntryPermission.APPEND_DATA, AclEntryPermission.DELETE, AclEntryPermission.DELETE_CHILD, AclEntryPermission.READ_ACL, AclEntryPermission.READ_ATTRIBUTES, AclEntryPermission.READ_DATA, AclEntryPermission.READ_NAMED_ATTRS, AclEntryPermission.SYNCHRONIZE, AclEntryPermission.WRITE_ACL, AclEntryPermission.WRITE_ATTRIBUTES, AclEntryPermission.WRITE_DATA, AclEntryPermission.WRITE_NAMED_ATTRS, AclEntryPermission.WRITE_OWNER);
        AclEntry.Builder builderNewBuilder = AclEntry.newBuilder();
        AclEntryType unused = AclEntryType.ALLOW;
        AclEntry aclEntryBuild = builderNewBuilder.setType(AclEntryType.ALLOW).setPrincipal(owner).setPermissions(np1VarM).build();
        try {
            hp1 hp1Var = lp1.o;
            Object[] objArr = {aclEntryBuild};
            w80.m(1, objArr);
            aclFileAttributeViewJ.setAcl(lp1.i(1, objArr));
        } catch (SecurityException e) {
            throw new IOException("Unable to set permissions for " + file, e);
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStoreFactory
    public <V extends Serializable> DataStore<V> createDataStore(String str) {
        return new FileDataStore(this, this.dataDirectory, str);
    }

    public final File getDataDirectory() {
        return this.dataDirectory;
    }
}
