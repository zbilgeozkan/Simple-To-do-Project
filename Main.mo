// Motoko

//import

import Map "mo:base/HashMap"; // anahtarı tanımla, kasadan çek
import Text "mo:base/Text";
// import Nat "mo:base/Nat";
// import ... "mo:base/...";

// actor -> akıllı sözleşme
actor PhoneBook {  //cannistor (class gibi)

  // 3 farklı class tanımladık
  type Name = Text;
  type Phone = Text;

  type Entry = {
    desc: Text;
    phone: Phone;

  };

  // değişkenler
  // let -> immutable (değişmez)
  // var -> mutable (değişebilir)
  // const -> ...

  let phonebook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash); // anahtarı tanımladık, kasayı tanımladık, bilgileri tanımlayıp kasamızın boş olduğunu belirttik (0'dan başlattık)

  // query => sorgular
  // update => geliştirme
  // async() => paralelde yapılıyor

  public func insert(name: Name, entry: Entry): async() {
    phonebook.put(name, entry);   // insert() -> void function | lookup() -> return function

  };

  // loop -> if, when, while, break
  // ? -> string, integer, float...

  public query func lookup(name: Name): async ?Entry {  // lookup fonksiyonu kontrol sağlar
    phonebook.get(name);
  };

  // Sample Canister -> Unique Canister
};
