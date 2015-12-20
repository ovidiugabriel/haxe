package hl.types;

@:coreType abstract Bytes {

	public inline function new( v : Int ) {
		this = untyped $balloc(v);
	}

	public inline function blit( pos : Int, src : Bytes, srcPos : Int, len : Int ) {
		untyped $bblit(this, pos, src, srcPos, len);
	}

	@:arrayAccess public inline function getI8( pos : Int ) : Int {
		return untyped $bgeti8(this,pos);
	}

	@:arrayAccess public inline function setI8( pos : Int, value : Int ) : Int {
		untyped $bseti8(this,pos,value);
		return value;
	}

	public inline function getI32( pos : Int ) : Int {
		return untyped $bgeti32(this,pos);
	}

	public inline function getF32( pos : Int ) : F32 {
		return untyped $bgetf32(this,pos);
	}

	public inline function getF64( pos : Int ) : Float {
		return untyped $bgetf64(this,pos);
	}

	public inline function setI32( pos : Int, value : Int ) : Void {
		untyped $bseti32(this, pos, value);
	}

	public inline function setF32( pos : Int, value : F32 ) : Void {
		untyped $bsetf32(this, pos, value);
	}
	
	public inline function setF64( pos : Int, value : Float ) : Void {
		untyped $bsetf64(this, pos, value);
	}
	
	@:hlNative("std","parse_int")
	public function parseInt( pos : Int, size : Int ) : Null<Int> {
		return null;
	}
	
	@:hlNative("std","parse_float")
	public function parseFloat( pos : Int, size : Int ) : Float {
		return 0.;
	}
	
	/**
		Count the number of UTF8 chars into the given Bytes data.
	**/
	@:hlNative("std","utf8length")
	function utf8Length( pos : Int, size : Int ) : Int {
		return 0;
	}

	/**
		Count the number of bytes until we reach \0
	**/
	@:hlNative("std","byteslength")
	function bytesLength( pos : Int ) : Int {
		return 0;
	}
	
	/**
		Decode the utf8 char at the given position
	**/
	@:hlNative("std","utf8char")
	function utf8Char( pos : Int, size : Int, charPos : Int ) : Int {
		return 0;
	}
	
	@:hlNative("std","value_to_string")
	public static function ofValue( v : Dynamic, size : Ref<Int> ) : Bytes {
		return null;
	}
}