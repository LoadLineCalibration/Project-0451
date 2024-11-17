{
  Что не используестся:
  Всё что НЕ для Windows-систем
  UnGnuG.h

  Порядок перевода:

  Core.h // самый первый

  ToDo: взять только то что можно вызвать через API

}

{$MINENUMSIZE 4} // use this option so the byte alignment is the same as C/C++ and then you don't need to add padding bytes in structs.

unit DeusEx.Core.Core;

interface

uses DeusEx.Core.UnBuild,
   Winapi.Windows, System.SysUtils;


{core.h ---------------------------------------------------------------------}

//	Forward declarations.
type
  UObject = class(TObject);      // Base object class
  UExporter = class(UObject);    // Exporter class
  UFactory = class (UObject);    // Factory class
  UField = class (UObject);      // Field class
  UConst = class(UField);    // Constant field
  UEnum = class(UField);     // Enum field
  UProperty = class(UField); // Base property class
    UByteProperty = class(UProperty);   // Byte property
    UIntProperty = class(UProperty);    // Integer property
    UBoolProperty = class(UProperty);   // Boolean property
    UFloatProperty = class(UProperty);  // Float property
    UObjectProperty = class(UProperty); // Object property
      UClassProperty = class(UObjectProperty); // Class property
    UNameProperty = class(UProperty);   // Name property
    UStructProperty = class(UProperty); // Struct property
    UStrProperty = class(UProperty);    // String property
    UArrayProperty = class(UProperty);  // Array property
  UStruct = class(UField); // Struct
    UFunction = class(UStruct); // Function struct
    UState = class(UStruct); // State struct
      UClass = class(UState); // Class struct
  ULinker = class (UObject);        // Linker
    ULinkerLoad = class(ULinker); // Loader linker
    ULinkerSave = class(ULinker); // Saver linker
  UPackage = class(UObject);       // Package class
  USubsystem = class(UObject);     // Subsystem
    USystem = class(USubsystem); // System
  UTextBuffer = class(UObject);    // Text buffer
  URenderDevice = class(UObject);  // Render device
  UPackageMap = class(UObject);    // Package map
// Special Magic not part of those other lame groupie object classes (ах ох!)
  UDebugSys = class(TObject);
// Structs
  FName = class(TObject);          // Name struct
  FArchive = class(TObject);       // Archive struct
  FCompactIndex = class(TObject);  // Compact index struct
  FExec = class(TObject);          // Exec struct
  FGuid = class(TObject);          // GUID struct
  FMemCache = class(TObject);      // Memory cache
  FMemStack = class(TObject);      // Memory stack
  FPackageInfo = class(TObject);   // Package info
  FTransactionBase = class(TObject); // Transaction base
  FUnknown = class(TObject);       // Unknown struct
  FRepLink = class(TObject);       // Replication link
  FArray = class(TObject);         // Array struct
  FLazyLoader = class(TObject);    // Lazy loader
  FString = class(TObject);        // String struct
  FMalloc = class(TObject);        // Memory allocation class


implementation

end.
