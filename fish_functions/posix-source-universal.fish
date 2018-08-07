function posix-source-universal
	for i in (cat $argv)
		set arr (string split -m1 = $i)
		set -Ux $arr[1] $arr[2]
	end
end
