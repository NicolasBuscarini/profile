Set-PSReadLineOption -Colors @{ Command = "#8be9fd" }
Set-PSReadLineOption -Colors @{ Comment = "#6272a4" }
Set-PSReadLineOption -Colors @{ ContinuationPrompt = "#50fa7b" }
Set-PSReadLineOption -Colors @{ Emphasis = "#f1fa8c" }
Set-PSReadLineOption -Colors @{ Error = "#ff5555" }
Set-PSReadLineOption -Colors @{ Keyword = "#ffb86c" }
Set-PSReadLineOption -Colors @{ Member = "#ffb86c" }
Set-PSReadLineOption -Colors @{ Number = "#bd93f9" }
Set-PSReadLineOption -Colors @{ Operator = "#bd93f9" }
Set-PSReadLineOption -Colors @{ Parameter = "#f1fa8c" }
Set-PSReadLineOption -Colors @{ Selection = "#44475a" }
Set-PSReadLineOption -Colors @{ String = "#ff79c6" }
Set-PSReadLineOption -Colors @{ Type = "#ff79c6" }
Set-PSReadLineOption -Colors @{ Variable = "#f1fa8c" }

Write Bem-vindo

function !dev {
    cd $env:userprofile\Coding
}

function !seven {
    cd $env:userprofile\Coding\7academy
}

function !proj {
    cd $env:userprofile\Coding\Projetos
}

function !facul {
    cd $env:userprofile\Coding\Faculdade
}

function !pet {
    cd $env:userprofile\Coding\Projetos\petcare
}

function !perolas {
    cd $env:userprofile\PerolasDa7
}

function !sln {
    $VSPath = "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe"
    $SolutionCount = (Get-ChildItem *.sln | Measure-Object).Count;
    $SolutionPath = Resolve-Path -Path *.sln -Relative
    if (1 -gt $SolutionCount) {
        Write-Output "Não há soluções nessa pasta"
        return
    }

    if ($SolutionCount -gt 1) {
        $SolutionPath=$args[0]
        
        if ($null -eq $SolutionPath) {
            Write-Output "Há mais de uma solução, você deve especificar qual abrir."
            return
        }
        
        if (-Not (Test-Path -Path $SolutionPath)) {
            Write-Output "A solução não existe."
            return
        }
    }

    Start-Process $VSPath $SolutionPath
}

function !profile {
    code $PsHome/Profile.ps1
}