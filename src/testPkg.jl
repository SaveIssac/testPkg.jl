module testPkg

using FFTW
using BenchmarkTools

export ExportFunc

function ExportFunc(A)
	value = zeros(ComplexF64, 4096, 64)
	for loop in 1:3
		for num in 1:4096
			value[num,:] = fft(A[num,:])
		end
	end
end

greet() = print("Hello World!")

end # module testPkg
